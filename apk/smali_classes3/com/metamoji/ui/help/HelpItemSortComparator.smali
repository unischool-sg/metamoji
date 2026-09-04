.class public Lcom/metamoji/ui/help/HelpItemSortComparator;
.super Ljava/lang/Object;
.source "HelpItemSortComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/ui/help/HelpItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/ui/help/HelpItem;Lcom/metamoji/ui/help/HelpItem;)I
    .locals 4

    .line 10
    iget-object v0, p1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    iget-object v1, p2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 11
    iget-object p1, p1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->ordinal()I

    move-result p1

    iget-object p2, p2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p2}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->ordinal()I

    move-result p2

    if-ge p1, p2, :cond_0

    return v2

    :cond_0
    return v3

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_3

    return v3

    .line 30
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_6

    return v2

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/ui/help/HelpItem;->anchorRectReal()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    .line 21
    invoke-virtual {p2}, Lcom/metamoji/ui/help/HelpItem;->anchorRectReal()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_5

    return v3

    :cond_5
    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    return v2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/metamoji/ui/help/HelpItem;

    check-cast p2, Lcom/metamoji/ui/help/HelpItem;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/help/HelpItemSortComparator;->compare(Lcom/metamoji/ui/help/HelpItem;Lcom/metamoji/ui/help/HelpItem;)I

    move-result p1

    return p1
.end method
