.class abstract Lcom/metamoji/mazec/ui/CursorKeysPopuper;
.super Landroid/widget/PopupWindow;
.source "CursorKeysPopuper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method abstract getKeyType()I
.end method

.method abstract popup(Landroid/view/View;IIIIII)V
.end method

.method abstract touch(II)I
.end method
