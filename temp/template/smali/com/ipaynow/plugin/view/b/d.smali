.class public final enum Lcom/ipaynow/plugin/view/b/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ALI_LOGO:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum BACK:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum BAIDU_LOGO:Lcom/ipaynow/plugin/view/b/d;

.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/view/b/d;

.field public static final enum IPAYNOW_LOGO:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum QQ_LOGO:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum SHADOW_BG:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum UPMP_LOGO:Lcom/ipaynow/plugin/view/b/d;

.field public static final enum WECHAT_LOGO:Lcom/ipaynow/plugin/view/b/d;


# instance fields
.field private image_type:Lcom/ipaynow/plugin/view/b/e;

.field private imgName:Ljava/lang/String;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ipaynow/plugin/view/b/d;

    const-string v1, "WECHAT_LOGO"

    const-string v3, "wechat_logo.png"

    sget-object v4, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/b/d;->WECHAT_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "UPMP_LOGO"

    const-string v6, "upmp_logo.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x13d0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->UPMP_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "QQ_LOGO"

    const-string v6, "qq_logo.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x35ef

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->QQ_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "BAIDU_LOGO"

    const-string v6, "baidu_logo.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x56c7

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->BAIDU_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "ALI_LOGO"

    const-string v6, "alipay_logo.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x79ab

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->ALI_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "IPAYNOW_LOGO"

    const/4 v5, 0x5

    const-string v6, "logo.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x463d

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->IPAYNOW_LOGO:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "BACK"

    const/4 v5, 0x6

    const-string v6, "back.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x784c

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->BACK:Lcom/ipaynow/plugin/view/b/d;

    new-instance v3, Lcom/ipaynow/plugin/view/b/d;

    const-string v4, "SHADOW_BG"

    const/4 v5, 0x7

    const-string v6, "tips_bg.9.png"

    sget-object v7, Lcom/ipaynow/plugin/view/b/e;->NINE_PNG:Lcom/ipaynow/plugin/view/b/e;

    const/16 v8, 0x348b

    invoke-direct/range {v3 .. v8}, Lcom/ipaynow/plugin/view/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V

    sput-object v3, Lcom/ipaynow/plugin/view/b/d;->SHADOW_BG:Lcom/ipaynow/plugin/view/b/d;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ipaynow/plugin/view/b/d;

    sget-object v1, Lcom/ipaynow/plugin/view/b/d;->WECHAT_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ipaynow/plugin/view/b/d;->UPMP_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ipaynow/plugin/view/b/d;->QQ_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ipaynow/plugin/view/b/d;->BAIDU_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ipaynow/plugin/view/b/d;->ALI_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/ipaynow/plugin/view/b/d;->IPAYNOW_LOGO:Lcom/ipaynow/plugin/view/b/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ipaynow/plugin/view/b/d;->BACK:Lcom/ipaynow/plugin/view/b/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ipaynow/plugin/view/b/d;->SHADOW_BG:Lcom/ipaynow/plugin/view/b/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipaynow/plugin/view/b/d;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ipaynow/plugin/view/b/e;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/ipaynow/plugin/view/b/d;->image_type:Lcom/ipaynow/plugin/view/b/e;

    iput-object p3, p0, Lcom/ipaynow/plugin/view/b/d;->imgName:Ljava/lang/String;

    iput p5, p0, Lcom/ipaynow/plugin/view/b/d;->pos:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/view/b/d;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/view/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/b/d;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/view/b/d;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/view/b/d;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/b/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/view/b/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getImgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/b/d;->imgName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPos()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/b/d;->pos:I

    return v0
.end method

.method public final getPostFix()Lcom/ipaynow/plugin/view/b/e;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/b/d;->image_type:Lcom/ipaynow/plugin/view/b/e;

    return-object v0
.end method
