.class abstract Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;
.super Lcom/metamoji/ui/library/item/NoteTemplateSelector$ViewHolder;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;
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

    .line 343
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$ViewHolder;-><init>()V

    return-void
.end method
