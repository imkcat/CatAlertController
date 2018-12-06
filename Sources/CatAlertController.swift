//
//  CatAlertController.swift
//  Story
//
//  Created by Kcat on 2018/3/3.
//  Copyright © 2018年 Linkore. All rights reserved.
//

import Foundation
import UIKit

/// The `CatAlertController` is a high level manager object for `UIAlertController`.
public class CatAlertController: NSObject {

    /// Instance of the source `UIAlertController`.
    public var alertController: UIAlertController
    
    /// The source view controller.
    public var fromViewController: UIViewController?

    /// Create an `CatAlertController` instance.
    ///
    /// - Parameters:
    ///   - title: Title text of the `CatAlertController`.
    ///   - message: Message text of the `CatAlertController`.
    ///   - preferredStyle: The style for the presenting style.
    public init(title: String? = nil,
         message: String? = nil,
         preferredStyle: UIAlertController.Style = .alert) {
        if preferredStyle == UIAlertController.Style.actionSheet && UIDevice.current.userInterfaceIdiom == .pad {
            self.alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        } else {
            self.alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        }
    }

    /// Add single `UIAlertAction` to the `CatAlertController`.
    ///
    /// - Parameter action: The `UIAlertAction` for adding.
    /// - Returns: Instance of the `CatAlertController`.
    public func addAction(_ action: UIAlertAction) -> CatAlertController {
        self.alertController.addAction(action)
        return self
    }
    
    /// Add multiple `UIAlertAction` to the `CatAlertController`.
    ///
    /// - Parameter actions: The `UIAlertAction` array for adding.
    /// - Returns: Instance of the `CatAlertController`.
    public func addActions(_ actions: [UIAlertAction]) -> CatAlertController {
        for action in actions {
            self.alertController.addAction(action)
        }
        return self
    }

    /// Present the `CatAlertController`.
    ///
    /// - Parameters:
    ///   - viewController: The source view controller.
    ///   - animated: Indicator for animation desire.
    ///   - completion: The block will execute after `CatAlertController` complete presented.
    public func present(from viewController: UIViewController,
                 animated: Bool,
                 completion:(() -> Void)? = nil) {
        self.fromViewController = viewController
        viewController.present(self.alertController, animated: animated, completion: completion)
    }

    /// Present the `CatAlertController` and auto dismiss it with time interval.
    ///
    /// - Parameters:
    ///   - viewController: The source view controller.
    ///   - animated: Indicator for animation desire.
    ///   - delay: Delay time interval for auto dismiss.
    ///   - completion: The block will execute after `CatAlertController` complete dismissed.
    public func flash(from viewController: UIViewController,
               animated: Bool,
               delay: TimeInterval = 0.75,
               completion:(() -> Void)? = nil) {
        self.fromViewController = viewController
        viewController.present(self.alertController, animated: animated) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
                self.alertController.dismiss(animated: animated, completion: completion)
            }
        }
    }

    /// Dismiss the `CatAlertController`.
    ///
    /// - Parameters:
    ///   - animated: Indicator for animation desire.
    ///   - completion: The block will execute after `CatAlertController` complete presented.
    public func dismiss(animated: Bool, completion:(() -> Void)? = nil) {
        self.alertController.dismiss(animated: animated, completion: completion)
    }

}
