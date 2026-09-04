.class public final synthetic Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lcom/metamoji/li/driver/LoginError;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/li/driver/LoginError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/li/driver/LoginError;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/li/driver/LoginError;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {v0, v1, p1}, Lcom/metamoji/li/driver/LoginDriver;->showErrorMessage$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/li/driver/LoginError;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
