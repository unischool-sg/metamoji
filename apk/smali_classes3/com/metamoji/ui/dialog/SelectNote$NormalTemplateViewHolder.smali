.class Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;
.super Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalTemplateViewHolder"
.end annotation


# instance fields
.field public _subText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 1

    .line 635
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object v0
.end method
