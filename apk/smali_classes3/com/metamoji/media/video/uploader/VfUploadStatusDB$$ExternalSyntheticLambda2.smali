.class public final synthetic Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field public final synthetic f$6:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$4:Z

    iput-object p6, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$5:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iput-object p7, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$6:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$4:Z

    iget-object v5, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$5:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iget-object v6, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;->f$6:Ljava/util/Date;

    move-object v7, p1

    check-cast v7, Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static/range {v0 .. v7}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->register$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
