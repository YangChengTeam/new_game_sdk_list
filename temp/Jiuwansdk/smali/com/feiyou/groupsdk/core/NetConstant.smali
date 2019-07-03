.class public abstract Lcom/feiyou/groupsdk/core/NetConstant;
.super Ljava/lang/Object;
.source "NetConstant.java"


# static fields
.field public static base_url:Ljava/lang/String;

.field public static debug_base_url:Ljava/lang/String;

.field private static is_debug:Z

.field public static login_url:Ljava/lang/String;

.field public static order_Update_url:Ljava/lang/String;

.field public static order_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/feiyou/groupsdk/core/NetConstant;->is_debug:Z

    .line 5
    const-string v0, "http://psdk.slpi1.com/v1/"

    sput-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->debug_base_url:Ljava/lang/String;

    .line 6
    const-string v0, "http://p.6071.com/api/v1/"

    sput-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->base_url:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feiyou/groupsdk/core/NetConstant;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "login/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->login_url:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feiyou/groupsdk/core/NetConstant;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "order/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->order_url:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feiyou/groupsdk/core/NetConstant;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "orderUpdate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->order_Update_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/feiyou/groupsdk/core/NetConstant;->is_debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->debug_base_url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/feiyou/groupsdk/core/NetConstant;->base_url:Ljava/lang/String;

    goto :goto_0
.end method
