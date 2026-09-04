.class Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;
.super Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalDocumentViewHolder"
.end annotation


# instance fields
.field protected _shareIcon:Landroid/widget/ImageView;

.field public _subText:Landroid/widget/TextView;

.field public _tagOverflow:Landroid/widget/ImageView;

.field public _tagViews:[Landroid/widget/ImageView;

.field public _templateIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 1

    .line 619
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object v0
.end method
