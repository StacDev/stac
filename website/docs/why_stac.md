---
sidebar_position: 2
---

# Why Stac?

Since the launch of the App Store and Play Store in 2008, mobile applications have become an integral part of our daily lives. As of 2024, there are over 3.8 million apps in the App Store and more than 2.5 million apps in the Play Store. During this period, apps have evolved significantly, becoming more dynamic, personalized, and intelligent. However, the fundamental way we build and publish apps has remained largely unchanged.

In traditional app development, data is driven by the backend while the user interface (UI) is managed by the client (Android, iOS, and web). This approach is known as Client-Driven UI (CDUI), where the client handles the majority of the presentation logic. But what are the limitations of this approach, and why might we need a new way of developing apps?

## Limitations of Client-Driven UI (CDUI)

There are some major issues with the CDUI approach:

1. **Frequent App Releases**: Weather it's a big UI change or a small text change, developers need to release a new version of the app to update the UI. This process can take days or even weeks to be approved by the app store, leading to user frustration if critical updates are delayed. And then some users might not update the app at all, leading to fragmentation and compatibility issues.
2. **Inconsistent User Experience**: Users on different platforms (iOS, Android, web) might have different versions of the app, leading to inconsistencies in the user experience. This can be due to different release schedules, feature flags, or bugs that are platform-specific.
3. **Limited Personalization**: Personalizing the app experience for each user is challenging with CDUI. The app needs to be pre-built with all possible variations, which can lead to bloated app sizes and slower performance. Dynamic personalization based on user behavior or preferences is difficult to achieve.
4. **A/B Testing and Experimentation**: Running A/B tests or experiments to optimize the app experience requires releasing multiple versions of the app and tracking user behavior. This process is cumbersome and time-consuming, limiting the ability to iterate quickly and make data-driven decisions.
5. **Scalability Issues**: As applications grow in complexity and user base, managing and synchronizing UI changes across multiple platforms becomes increasingly challenging. CDUI can struggle to scale efficiently, leading to slower development cycles and higher costs. This is particularly problematic for applications that require frequent updates and feature additions
6. **Security Concerns**: Storing presentation logic on the client side can expose sensitive information and logic to end-users, making it more vulnerable to tampering and reverse engineering. A server-driven approach can centralize control, improving security by keeping critical logic on the server.
7. **High Time-To-Market**: Developing and releasing apps with CDUI can be time-consuming, especially when dealing with multiple platforms and complex UI requirements. The need to coordinate backend and frontend development cycles can slow down the release process, delaying new features and updates.

Which brings us to an intriguing question: What if the client app were simplified to the point where it only knows how to render widgets, without any knowledge of what it is rendering? What if we could control the UI directly from the server? This is the fundamental concept behind Server-Driven UI (SDUI).

## What is Server-Driven UI (SDUI)?

Server-Driven UI (SDUI) is an innovative approach to app development where the UI is defined and controlled by the server, rather than the client. In an SDUI architecture, the client app acts as a thin client, responsible for rendering UI components based on the data and instructions received from the server. This decouples the UI logic from the client app, allowing for dynamic, real-time updates without the need for app store releases.

In an SDUI model, the server sends JSON payloads to the client, containing the UI structure, content, and behavior. The client interprets these payloads and renders the UI accordingly. This approach enables developers to make changes to the UI on the server side, instantly reflecting those changes in the client app without requiring app updates or user intervention.

## Why Stac stands out?

**Stac** is a Server-Driven UI (SDUI) framework for Flutter. Stac empowers developers to build dynamic, cross-platform applications by utilizing JSON in real time. This innovative approach to UI development allows for flexible, efficient, and seamless updates, minimizing the need for frequent AppStore/PlayStore releases and ensuring your application always looks and feels fresh.

Here are some key features that set Stac apart:

- **Cross-Platform**: Stac works everywhere Flutter works, enabling you to build SDUI applications for Android, iOS, and the web.
- **Real-Time Updates**: Stac provides instant UI updates using JSON payloads, allowing you to modify the UI on the fly without app store releases.
- **Dynamic UI**: With Stac, you can create and modify UIs dynamically based on server-side data, enabling personalized and adaptive user experiences.
- **Follows Flutter Structure**: Stac adheres to Flutter's architecture for building UI, making it easy to integrate with existing Flutter projects and frameworks.
- **Flexible Integration**: Stac can be easily integrated into your Flutter projects, allowing you to leverage SDUI capabilities without major code changes.
- **Open Source**: Stac is an open-source project that encourages community contributions and collaboration, ensuring continuous improvement and innovation.
- **Scalable**: Stac is designed to scale efficiently, making it suitable for applications of all sizes and complexities. Whether you're building a simple prototype or a large-scale production app, Stac can handle it.
- **Secure**: By centralizing UI logic on the server, Stac enhances security by reducing the exposure of sensitive information and logic to end-users. This makes it harder for malicious actors to tamper with the UI or reverse engineer critical logic.
- **Fast Time-To-Market**: With Stac, you can develop and release apps faster by decoupling UI updates from app releases. This allows you to iterate quickly, run experiments, and optimize the user experience without waiting for app store approvals.

Overall Stac is a powerful tool that enables developers to build modern, dynamic applications that adapt to user needs and preferences in real time. By leveraging the benefits of Server-Driven UI, Stac opens up new possibilities for app development, enabling developers to create engaging, personalized experiences that keep users coming back for more.
