.class public final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;
.super Ljava/lang/Object;
.source "NtVerifyPasswordDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007Je\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2>\u0010\u000c\u001a:\u0008\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\u00a2\u0006\u0002\u0008\u0013H\u0002\u00a2\u0006\u0002\u0010\u0014Jb\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b28\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0016\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00080\u0018H\u0007J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;",
        "",
        "<init>",
        "()V",
        "getHashedPassword",
        "",
        "password",
        "internalInputAndVerifyPassword",
        "",
        "title",
        "hashed",
        "",
        "callback",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "Lkotlin/ParameterName;",
        "name",
        "verifiedPassword",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)V",
        "inputAndVerifyPassword",
        "caller",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "Lkotlin/Function2;",
        "checkPassword",
        "Lcom/metamoji/cm/PBE;",
        "hashedPwd",
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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;-><init>()V

    return-void
.end method

.method private final internalInputAndVerifyPassword(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    new-instance v1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const-string p1, "VerifyPasswordTask"

    invoke-direct {v0, p1, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 140
    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->fire$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final checkPassword(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 161
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getHashedPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    :try_start_0
    new-instance v1, Lcom/metamoji/cm/HashGenerator;

    sget-object v2, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/metamoji/cm/HashGenerator;->append(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/metamoji/cm/HashGenerator;->appendSecretSeed()V

    .line 125
    invoke-virtual {v1}, Lcom/metamoji/cm/HashGenerator;->getHashString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 144
    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p5, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->internalInputAndVerifyPassword(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)V

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no tag"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
