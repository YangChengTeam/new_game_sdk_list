.class public final enum Lcom/feiyou/groupsdk/core/FYErrorCode;
.super Ljava/lang/Enum;
.source "FYErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/feiyou/groupsdk/core/FYErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/feiyou/groupsdk/core/FYErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcom/feiyou/groupsdk/core/FYErrorCode;

.field public static final enum FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

.field public static final enum SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/feiyou/groupsdk/core/FYErrorCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/feiyou/groupsdk/core/FYErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYErrorCode;->SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;

    new-instance v0, Lcom/feiyou/groupsdk/core/FYErrorCode;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/feiyou/groupsdk/core/FYErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    new-instance v0, Lcom/feiyou/groupsdk/core/FYErrorCode;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/feiyou/groupsdk/core/FYErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feiyou/groupsdk/core/FYErrorCode;->CANCEL:Lcom/feiyou/groupsdk/core/FYErrorCode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/feiyou/groupsdk/core/FYErrorCode;

    sget-object v1, Lcom/feiyou/groupsdk/core/FYErrorCode;->SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/feiyou/groupsdk/core/FYErrorCode;->CANCEL:Lcom/feiyou/groupsdk/core/FYErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/feiyou/groupsdk/core/FYErrorCode;->ENUM$VALUES:[Lcom/feiyou/groupsdk/core/FYErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feiyou/groupsdk/core/FYErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feiyou/groupsdk/core/FYErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/feiyou/groupsdk/core/FYErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/feiyou/groupsdk/core/FYErrorCode;->ENUM$VALUES:[Lcom/feiyou/groupsdk/core/FYErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
