.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;
.super Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFolderViewHolder"
.end annotation


# instance fields
.field public _folderName:Landroid/widget/TextView;

.field public _subText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3174
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
