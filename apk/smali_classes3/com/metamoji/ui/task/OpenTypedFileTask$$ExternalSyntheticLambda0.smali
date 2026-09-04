.class public final synthetic Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/task/OpenTypedFileTask;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/task/OpenTypedFileTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/task/OpenTypedFileTask;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/task/OpenTypedFileTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/task/OpenTypedFileTask;

    invoke-static {v0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->mimeTypes_delegate$lambda$1(Lcom/metamoji/ui/task/OpenTypedFileTask;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
