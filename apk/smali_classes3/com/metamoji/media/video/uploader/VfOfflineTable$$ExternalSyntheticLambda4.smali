.class public final synthetic Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/HashSet;

.field public final synthetic f$4:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$3:Ljava/util/HashSet;

    iput-object p5, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$4:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$3:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;->f$4:Ljava/util/HashSet;

    move-object v5, p1

    check-cast v5, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->updateTicketsInDocument$lambda$5(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
