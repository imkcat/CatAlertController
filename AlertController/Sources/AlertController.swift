//
//  AlertController.swift
//  Story
//
//  Created by Kcat on 2018/3/3.
//  Copyright © 2018年 Linkore. All rights reserved.
//

import Foundation
import UIKit

/// The `AlertController` is a high level manager object for `UIAlertController`.
public class AlertController: NSObject {

    /// Instance of the source `UIAlertController`.
    public var alertController: UIAlertController
    
    /// The source view controller.
    public var fromViewController: UIViewController?

    /// Create an `AlertController` instance.
    ///
    /// - Parameters:
    ///   - title: Title text of the `AlertController`.
    ///   - message: Message text of the `AlertController`.
    ///   - preferredStyle: The style for the presenting style.
    public init(title: String? = nil,
         message: String? = nil,
         preferredStyle: UIAlertControllerStyle = .alert) {
        if preferredStyle == UIAlertControllerStyle.actionSheet && UIDevice.current.userInterfaceIdiom == .pad {
            self.alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        } else {
            self.alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        }
    }

    /// Add single `UIAlertAction` to the `AlertController`.
    ///
    /// - Parameter action: The `UIAlertAction` for adding.
    /// - Returns: Instance of the `AlertController`.
    public func addAction(_ action: UIAlertAction) -> AlertController {
        self.alertController.addAction(action)
        return self
    }

    /// Present the `AlertController`.
    ///
    /// - Parameters:
    ///   - viewController: The source view controller.
    ///   - animated: Indicator for animation desire.
    ///   - completion: The block will execute after `AlertController` complete presented.
    public func present(from viewController: UIViewController,
                 animated: Bool,
                 completion:(() -> Void)? = nil) {
        self.fromViewController = viewController
        viewController.present(self.alertController, animated: animated, completion: completion)
    }

    /// Present the `AlertController` and auto dismiss it with time interval.
    ///
    /// - Parameters:
    ///   - viewController: The source view controller.
    ///   - animated: Indicator for animation desire.
    ///   - delay: Delay time interval for auto dismiss.
    ///   - completion: The block will execute after `AlertController` complete dismissed.
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

    /// Dismiss the `AlertController`.
    ///
    /// - Parameters:
    ///   - animated: Indicator for animation desire.
    ///   - completion: The block will execute after `AlertController` complete presented.
    public func dismiss(animated: Bool, completion:(() -> Void)? = nil) {
        self.alertController.dismiss(animated: animated, completion: completion)
    }

}
