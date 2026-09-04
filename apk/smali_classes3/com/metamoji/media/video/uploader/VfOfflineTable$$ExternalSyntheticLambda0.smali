.class public final synthetic Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/metamoji/sqldb/SqlResultSet;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getRegisteredTicketsInDocument$lambda$3(Ljava/util/HashSet;Lcom/metamoji/sqldb/SqlResultSet;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
