.class public final Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;
.super Ljava/lang/Object;
.source "UiPasswordDialog2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiPasswordDialog2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiPasswordDialog2.kt\ncom/metamoji/ui/dialog/UiPasswordDialog2$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;",
        "",
        "<init>",
        "()V",
        "checkPassword",
        "Lcom/metamoji/cm/PBE;",
        "viewModel",
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;",
        "checkPasswordAsync",
        "hashedPassword",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkPassword(Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;)Lcom/metamoji/cm/PBE;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;->checkPassword(Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;)Lcom/metamoji/cm/PBE;

    move-result-object p0

    return-object p0
.end method

.method private final checkPassword(Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;)Lcom/metamoji/cm/PBE;
    .locals 3

    .line 81
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->getPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    new-instance v1, Lcom/metamoji/cm/HashGenerator;

    sget-object v2, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/metamoji/cm/HashGenerator;->append(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/metamoji/cm/HashGenerator;->appendSecretSeed()V

    .line 85
    invoke-virtual {v1}, Lcom/metamoji/cm/HashGenerator;->getHashString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->getHashedPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lcom/metamoji/cm/PBE;

    invoke-direct {p1}, Lcom/metamoji/cm/PBE;-><init>()V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PBE;->setPassword(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;
    .locals 5

    const-string v0, "hashedPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v4}, Lcom/metamoji/lib/utils/UtLog;->assert$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 113
    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPassword$2;

    invoke-direct {v0, p1, v4}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPassword$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v2, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/PBE;

    return-object p1
.end method

.method public final checkPasswordAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cm/PBE;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
