.class public final synthetic Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$4:Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;->f$4:Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;

    move-object v5, p1

    check-cast v5, Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->register$lambda$0(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
