.class public final synthetic Lcom/metamoji/lib/utils/UtLib$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/IUtExternalLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/IUtExternalLogger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtLib$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/IUtExternalLogger;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLib$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/IUtExternalLogger;

    invoke-static {v0}, Lcom/metamoji/lib/utils/UtLib;->initialize$lambda$0(Lcom/metamoji/lib/utils/IUtExternalLogger;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
