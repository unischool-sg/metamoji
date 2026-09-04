.class Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;
.super Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalSharedDriveViewHolder"
.end annotation


# instance fields
.field public _subText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 638
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 1

    .line 642
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object v0
.end method
