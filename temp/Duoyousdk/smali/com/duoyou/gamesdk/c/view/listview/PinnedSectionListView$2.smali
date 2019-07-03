.class Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
