.class public Lcom/duoyou/gamesdk/openapi/DyRoleInfo$TYPE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/openapi/DyRoleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TYPE"
.end annotation


# static fields
.field public static final CREATE_ROLE:Ljava/lang/String; = "createRole"

.field public static final ENTER_SERVER:Ljava/lang/String; = "enterServer"

.field public static final EXIT_SERVER:Ljava/lang/String; = "exitServer"

.field public static final LEVEL_UP:Ljava/lang/String; = "levelUp"


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/openapi/DyRoleInfo;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/openapi/DyRoleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/openapi/DyRoleInfo$TYPE;->this$0:Lcom/duoyou/gamesdk/openapi/DyRoleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
