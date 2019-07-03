.class public final enum Lcom/ipaynow/plugin/view/d/g;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth0:Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth1:Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth2:Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth3:Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth4:Lcom/ipaynow/plugin/view/d/g;

.field public static final enum z_depth5:Lcom/ipaynow/plugin/view/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth0"

    invoke-direct {v0, v1, v3}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth0:Lcom/ipaynow/plugin/view/d/g;

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth1"

    invoke-direct {v0, v1, v4}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth1:Lcom/ipaynow/plugin/view/d/g;

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth2"

    invoke-direct {v0, v1, v5}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth2:Lcom/ipaynow/plugin/view/d/g;

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth3"

    invoke-direct {v0, v1, v6}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth3:Lcom/ipaynow/plugin/view/d/g;

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth4"

    invoke-direct {v0, v1, v7}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth4:Lcom/ipaynow/plugin/view/d/g;

    new-instance v0, Lcom/ipaynow/plugin/view/d/g;

    const-string v1, "z_depth5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/view/d/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->z_depth5:Lcom/ipaynow/plugin/view/d/g;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ipaynow/plugin/view/d/g;

    sget-object v1, Lcom/ipaynow/plugin/view/d/g;->z_depth0:Lcom/ipaynow/plugin/view/d/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipaynow/plugin/view/d/g;->z_depth1:Lcom/ipaynow/plugin/view/d/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/plugin/view/d/g;->z_depth2:Lcom/ipaynow/plugin/view/d/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/plugin/view/d/g;->z_depth3:Lcom/ipaynow/plugin/view/d/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipaynow/plugin/view/d/g;->z_depth4:Lcom/ipaynow/plugin/view/d/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ipaynow/plugin/view/d/g;->z_depth5:Lcom/ipaynow/plugin/view/d/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipaynow/plugin/view/d/g;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/d/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/view/d/g;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/view/d/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/d/g;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/view/d/g;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/view/d/g;->ENUM$VALUES:[Lcom/ipaynow/plugin/view/d/g;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/view/d/g;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
