.class Lcom/duoyou/gamesdk/c/view/listview/XListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/listview/XListView;->initWithContext(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->access$100(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->access$002(Lcom/duoyou/gamesdk/c/view/listview/XListView;I)I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
