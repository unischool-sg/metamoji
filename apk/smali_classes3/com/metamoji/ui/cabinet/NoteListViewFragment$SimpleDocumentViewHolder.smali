.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;
.super Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleDocumentViewHolder"
.end annotation


# instance fields
.field public _cabinetSyncWait:Landroid/widget/ImageView;

.field public _cabinetSync_Syncing:Landroid/widget/ImageView;

.field public _cabinetSync_Waiting:Landroid/widget/ImageView;

.field public _createDate:Landroid/widget/TextView;

.field public _localCache:Landroid/widget/ImageView;

.field public _multiselectCheck:Landroid/widget/ImageView;

.field public _noteIcon:Landroid/widget/ImageView;

.field public _shareIcon:Landroid/widget/ImageView;

.field public _starIcon:Landroid/widget/ImageView;

.field public _tempShareIcon:Landroid/widget/ImageView;

.field public _templateIcon:Landroid/widget/ImageView;

.field public _thumbnail:Landroid/widget/ImageView;

.field public _title:Landroid/widget/TextView;

.field public _updateDate:Landroid/widget/TextView;

.field public _userText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3150
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
