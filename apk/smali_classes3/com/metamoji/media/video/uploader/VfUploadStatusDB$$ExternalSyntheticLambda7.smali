.class public final synthetic Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda7;->f$0:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda7;->f$0:[Ljava/lang/Integer;

    check-cast p1, Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->changeStatus$lambda$8([Ljava/lang/Integer;Lcom/metamoji/sqldb/SqlPreparedStatement;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
