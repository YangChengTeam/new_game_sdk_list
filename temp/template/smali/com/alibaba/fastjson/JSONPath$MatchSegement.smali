.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startsWithValue"    # Ljava/lang/String;
    .param p3, "endsWithValue"    # Ljava/lang/String;
    .param p4, "containsValues"    # [Ljava/lang/String;
    .param p5, "not"    # Z

    .prologue
    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    .line 1688
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 1689
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 1690
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 1691
    iput-boolean p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    .line 1693
    const/4 v1, 0x0

    .line 1694
    .local v1, "len":I
    if-eqz p2, :cond_0

    .line 1695
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1698
    :cond_0
    if-eqz p3, :cond_1

    .line 1699
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1702
    :cond_1
    if-eqz p4, :cond_2

    .line 1703
    array-length v3, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p4, v2

    .line 1704
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 1703
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1708
    .end local v0    # "item":Ljava/lang/String;
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    .line 1709
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1712
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v6, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1714
    .local v2, "propertyValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return v5

    .line 1718
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1720
    .local v4, "strPropertyValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-ge v6, v7, :cond_2

    .line 1721
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    goto :goto_0

    .line 1724
    :cond_2
    const/4 v3, 0x0

    .line 1725
    .local v3, "start":I
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1726
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1727
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    goto :goto_0

    .line 1729
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 1732
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1733
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_6

    aget-object v0, v7, v6

    .line 1734
    .local v0, "containsValue":Ljava/lang/String;
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1735
    .local v1, "index":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_5

    .line 1736
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    goto :goto_0

    .line 1738
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v1, v9

    .line 1733
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1742
    .end local v0    # "containsValue":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 1743
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1744
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    goto :goto_0

    .line 1748
    :cond_7
    iget-boolean v6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method
