.class public final enum Lcom/ipaynow/plugin/view/template/layout/c;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/view/template/layout/c;

.field public static final enum HEADER_BACK:Lcom/ipaynow/plugin/view/template/layout/c;

.field public static final enum HEADER_DEFAULT:Lcom/ipaynow/plugin/view/template/layout/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ipaynow/plugin/view/template/layout/c;

    const-string v1, "HEADER_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/view/template/layout/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_DEFAULT:Lcom/ipaynow/plugin/view/template/layout/c;

    new-instance v0, Lcom/ipaynow/plugin/view/template/layout/c;

    const-string v1, "HEADER_BACK"

    invoke-direct {v0, v1, v3}, Lcom/ipaynow/plugin/view/template/layout/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_BACK:Lcom/ipaynow/plugin/view/template/layout/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ipaynow/plugin/view/template/layout/c;

    sget-object v1, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_DEFAULT:Lcom/ipaynow/plugin/view/template/layout/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_BACK:Lcom/ipaynow/plugin/view/template/layout/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/template/layout/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/view/template/layout/c;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/view/template/layout/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/layout/c;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/view/template/layout/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/template/layout/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/view/template/layout/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
