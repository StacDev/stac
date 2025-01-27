import {PrismTheme} from 'prism-react-renderer';

const darkTheme: PrismTheme = {
  plain: {
    color: "#FFFFFF",
    backgroundColor: "#1D1F21",
  },
  styles: [
    {
      types: ["comment", "prolog", "doctype", "cdata"],
      style: {
        color: "#949494",
        fontStyle: "italic",
      },
    },
    {
      types: ["namespace"],
      style: {
        opacity: 0.7,
      },
    },
    {
      types: ["string", "attr-value"],
      style: {
        color: "#95E183",
      },
    },
    {
      types: ["punctuation", "operator"],
      style: {
        color: "#FFFFFF",
      },
    },
    {
      types: [
        "entity",
        "url",
        "symbol",
        "variable",
        "constant",
        "property",
        "regex",
        "inserted",
      ],
      style: {
        color: "#66A4FF",
      },
    },
    {
      types: [
        "boolean",
      ],
      style: {
        color: "#FF9A3E",
      },
    },
    {
      types: [
        "number",
      ],
      style: {
        color: "#60D0DC",
      },
    },
    {
      types: ["atrule", "keyword", "attr-name", "selector"],
      style: {
        color: "#00a4db",
      },
    },
    {
      types: ["function", "deleted", "tag"],
      style: {
        color: "#d73a49",
      },
    },
{
      types: ["function"],
      style: {
        color: "#66A4FF",
      },
    },
    {
      types: ["function-variable"],
      style: {
        color: "#6f42c1",
      },
    },
    {
      types: ["tag", "selector", "keyword"],
      style: {
        color: "#FF9A3E",
      },
    },
  ],
}

export default darkTheme;