.class public Lcom/metamoji/ui/cabinet/SimpleGridView;
.super Lcom/metamoji/ui/cabinet/NoteListGridView;
.source "SimpleGridView.java"


# instance fields
.field public _columns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_columns:I

    .line 29
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->onMeasure(II)V

    return-void
.end method
