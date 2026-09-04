.class public final synthetic Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvFrameSelectorView;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvFrameSelectorView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvFrameSelectorView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvFrameSelectorView;

    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/video/AmvFrameSelectorView;->lambda$2$lambda$0(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
