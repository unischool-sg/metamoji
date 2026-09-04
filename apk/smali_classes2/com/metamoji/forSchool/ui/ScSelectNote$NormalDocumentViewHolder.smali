.class Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;
.super Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;
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

    .line 714
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
    .locals 1

    .line 722
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    return-object v0
.end method
