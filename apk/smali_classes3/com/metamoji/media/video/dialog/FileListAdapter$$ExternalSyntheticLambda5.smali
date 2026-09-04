.class public final synthetic Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->mUpdatedObserver$lambda$1(Lcom/metamoji/media/video/dialog/FileListAdapter;I)V

    return-void
.end method
