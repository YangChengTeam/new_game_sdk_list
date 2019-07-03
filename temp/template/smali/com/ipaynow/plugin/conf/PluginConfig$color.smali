.class public Lcom/ipaynow/plugin/conf/PluginConfig$color;
.super Ljava/lang/Object;


# static fields
.field public static final black:I

.field public static final default_bgcolor:I = -0x1

.field public static final gray:I

.field public static final thin_black:I

.field public static final white:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#1E2130"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->thin_black:I

    const-string v0, "#2E3A4B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    const-string v0, "#F5F7F9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->white:I

    const-string v0, "#D8D8D8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->gray:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
