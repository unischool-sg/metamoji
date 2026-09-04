.class public final synthetic Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda9;
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

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/media/video/dialog/FileListAdapter;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->mTotalLocalSizeObserver$lambda$5(Lcom/metamoji/media/video/dialog/FileListAdapter;J)V

    return-void
.end method
