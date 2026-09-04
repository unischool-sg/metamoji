.class public final synthetic Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/model/LoginViewModel;

    invoke-static {v0}, Lcom/metamoji/li/model/LoginViewModel;->simpleModel_delegate$lambda$1(Lcom/metamoji/li/model/LoginViewModel;)Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v0

    return-object v0
.end method
