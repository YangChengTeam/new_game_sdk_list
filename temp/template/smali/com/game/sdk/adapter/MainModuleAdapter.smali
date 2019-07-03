.class public Lcom/game/sdk/adapter/MainModuleAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private curIndex:I

.field private mContext:Landroid/content/Context;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field private moduleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "curIndex"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    .line 41
    iput p3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    .line 42
    iput p4, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    .line 43
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 44
    return-void
.end method


# virtual methods
.method public addNewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    iget v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    iget v1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    iget v2, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    iget v1, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    iget v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->curIndex:I

    iget v4, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->pageSize:I

    mul-int/2addr v3, v4

    add-int v1, p1, v3

    .line 81
    .local v1, "pos":I
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ModuleInfo;

    iget-object v2, v3, Lcom/game/sdk/domain/ModuleInfo;->ico:Ljava/lang/String;

    .line 83
    .local v2, "url":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 84
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;-><init>(Lcom/game/sdk/adapter/MainModuleAdapter;)V

    .line 85
    .local v0, "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout"

    const-string v6, "main_module_item"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "module_iv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleIv:Landroid/widget/ImageView;

    .line 88
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "module_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleTv:Landroid/widget/TextView;

    .line 91
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "num_layout"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "num_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numTv:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ModuleInfo;

    iget v3, v3, Lcom/game/sdk/domain/ModuleInfo;->num:I

    if-lez v3, :cond_2

    .line 100
    iget-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v4, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ModuleInfo;

    iget v3, v3, Lcom/game/sdk/domain/ModuleInfo;->num:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    iget-object v4, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ModuleInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/ModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/game/sdk/adapter/MainModuleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->moduleIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 112
    :cond_0
    return-object p2

    .line 96
    .end local v0    # "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;
    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, v0, Lcom/game/sdk/adapter/MainModuleAdapter$ViewHolder;->numLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
