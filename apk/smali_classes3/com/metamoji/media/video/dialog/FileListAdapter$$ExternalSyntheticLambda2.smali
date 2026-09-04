.class public final synthetic Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

.field public final synthetic f$1:Lcom/metamoji/media/video/dialog/FileViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/FileViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/media/video/dialog/FileViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/media/video/dialog/FileViewHolder;

    invoke-static {v0, v1, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->onBindViewHolder$lambda$12(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/FileViewHolder;Landroid/view/View;)V

    return-void
.end method
