.class public final synthetic Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/noteanytime/StartupActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/noteanytime/StartupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/noteanytime/StartupActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/noteanytime/StartupActivity;

    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/StartupActivity;->registerUserDefaultsListener$lambda$3(Lcom/metamoji/noteanytime/StartupActivity;Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
