.class Lcom/duoyou/gamesdk/c/view/listview/XListView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/listview/XListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/listview/XListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->access$300(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;->onRefresh()V

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->access$400(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refresh_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->access$502(Lcom/duoyou/gamesdk/c/view/listview/XListView;Z)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
