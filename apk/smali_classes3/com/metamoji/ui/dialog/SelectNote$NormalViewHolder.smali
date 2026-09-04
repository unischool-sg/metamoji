.class abstract Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;
.super Lcom/metamoji/ui/dialog/SelectNote$ViewHolder;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NormalViewHolder"
.end annotation


# instance fields
.field public _mainText:Landroid/widget/TextView;

.field public _thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 591
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$ViewHolder;-><init>()V

    return-void
.end method
