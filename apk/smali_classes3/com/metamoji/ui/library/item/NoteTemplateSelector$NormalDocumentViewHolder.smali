.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;
.super Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalDocumentViewHolder"
.end annotation


# instance fields
.field public _shareIcon:Landroid/widget/ImageView;

.field public _templateIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;-><init>()V

    return-void
.end method
