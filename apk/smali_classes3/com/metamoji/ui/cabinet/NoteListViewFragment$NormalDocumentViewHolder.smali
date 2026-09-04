.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;
.super Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalDocumentViewHolder"
.end annotation


# instance fields
.field public _cabinetSyncWait:Landroid/widget/ImageView;

.field public _cabinetSync_Syncing:Landroid/widget/ImageView;

.field public _cabinetSync_Waiting:Landroid/widget/ImageView;

.field public _localCache:Landroid/widget/ImageView;

.field public _multiselectCheck:Landroid/widget/ImageView;

.field public _shareIcon:Landroid/widget/ImageView;

.field public _starIcon:Landroid/widget/ImageView;

.field public _subText:Landroid/widget/TextView;

.field public _tagOverflow:Landroid/widget/ImageView;

.field public _tagViews:[Landroid/widget/ImageView;

.field public _templateIcon:Landroid/widget/ImageView;

.field public _userText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2038
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
