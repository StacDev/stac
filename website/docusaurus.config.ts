import type { Config } from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';
import lightTheme from './theme/lightTheme';
import darkTheme from './theme/darkTheme';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

const config: Config = {
  title: 'Stac',
  tagline: 'Server-Driven UI for Flutter',
  favicon: 'img/favicon.ico',
  // Set the production url of your site here
  url: 'https://buildStac.netlify.app',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: '/',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'buildStac', // Usually your GitHub org/user name.
  projectName: 'stac', // Usually your repo name.

  onBrokenLinks: 'warn',
  onBrokenMarkdownLinks: 'warn',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          routeBasePath: '/',
          sidebarPath: './sidebars.ts',
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/BuildStac/stac',
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    // Replace with your project's social card
    image: 'img/framework.png',
    colorMode: {
      defaultMode: 'dark',
    },
    navbar: {
      title: 'Stac',
      logo: {
        alt: 'Stac Logo',
        src: 'img/logo.png',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'tutorialSidebar',
          position: 'left',
          label: 'Docs',
        },
        {
          to: 'https://playground.buildstac.dev/',
          label: 'Playground',
          position: 'right',
        },
        {
          to: 'https://github.com/BuildStac/stac',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            {
              label: 'Docs',
              to: '/docs/intro',
            },
          ],
        },
        {
          title: 'Community',
          items: [
            {
              label: 'Website',
              to: 'https://buildstac.dev/',
            },
            {
              label: 'LinkedIn',
              to: 'https://www.linkedin.com/company/buildstac',
            },
            {
              label: 'X',
              to: 'https://x.com/buildStac',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'GitHub',
              href: 'https://github.com/BuildStac/stac',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Stac`,
    },
    prism: {
      additionalLanguages: ['dart'],
      theme: lightTheme,
      darkTheme: darkTheme,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
