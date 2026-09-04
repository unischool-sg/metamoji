.class public Lcom/metamoji/ui/cabinet/DetailGridView;
.super Lcom/metamoji/ui/cabinet/NoteListGridView;
.source "DetailGridView.java"


# static fields
.field public static final TAG_LAYOUT_NORMAL:I = 0x1

.field public static final TAG_LAYOUT_SMALL:I


# instance fields
.field public _columns:I

.field public _tagLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/DetailGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/DetailGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 37
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_ITEM_WIDTH:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 38
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_ITEM_WIDTH:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/cabinet/DetailGridView;->_columns:I

    .line 39
    iput v2, p0, Lcom/metamoji/ui/cabinet/DetailGridView;->_tagLayout:I

    goto :goto_0

    .line 42
    :cond_0
    iput v2, p0, Lcom/metamoji/ui/cabinet/DetailGridView;->_columns:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/metamoji/ui/cabinet/DetailGridView;->_tagLayout:I

    .line 46
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->onMeasure(II)V

    return-void
.end method
