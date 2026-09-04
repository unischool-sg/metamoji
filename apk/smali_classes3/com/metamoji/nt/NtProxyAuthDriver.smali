.class public final Lcom/metamoji/nt/NtProxyAuthDriver;
.super Ljava/lang/Object;
.source "NtProxyAuthDriver.kt"

# interfaces
.implements Lcom/metamoji/network/INwProxyAuthDriver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtProxyAuthDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtProxyAuthDriver.kt\ncom/metamoji/nt/NtProxyAuthDriver\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,181:1\n221#2,2:182\n*S KotlinDebug\n*F\n+ 1 NtProxyAuthDriver.kt\ncom/metamoji/nt/NtProxyAuthDriver\n*L\n108#1:182,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010\r\u001a\u00020\u000e2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010H\u0016J\u001c\u0010\u0013\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0014H\u0016J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0011H\u0007J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0011H\u0007R\u001c\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0011X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0017\u0010\u0003R\u0014\u0010\u0018\u001a\u00020\u0011X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\u0003R\u000e\u0010\u001a\u001a\u00020\u0011X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/nt/NtProxyAuthDriver;",
        "Lcom/metamoji/network/INwProxyAuthDriver;",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "kotlin.jvm.PlatformType",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "showProxyAuthDialog",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "initialCredential",
        "(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveCredentials",
        "",
        "entries",
        "",
        "",
        "Lcom/metamoji/network/NwProxyAuthEntity;",
        "loadCredentials",
        "",
        "KEY_USERNAME",
        "KEY_PASSWORD",
        "getKEY_PASSWORD$annotations",
        "KEY_AUTHTYPE",
        "getKEY_AUTHTYPE$annotations",
        "SECRET_KEY",
        "encryptString",
        "str",
        "decryptString",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/nt/NtProxyAuthDriver;

.field private static final KEY_AUTHTYPE:Ljava/lang/String; = "authtype"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "userpassword"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final SECRET_KEY:Ljava/lang/String; = "L6WPWb7sIvAn8DeM90"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/NtProxyAuthDriver;

    invoke-direct {v0}, Lcom/metamoji/nt/NtProxyAuthDriver;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtProxyAuthDriver;->INSTANCE:Lcom/metamoji/nt/NtProxyAuthDriver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 169
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/PBE;

    const-string v2, "L6WPWb7sIvAn8DeM90"

    invoke-direct {v0, v2}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "getBytes(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 173
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 175
    sget-object v0, Lcom/metamoji/nt/NtProxyAuthDriver;->INSTANCE:Lcom/metamoji/nt/NtProxyAuthDriver;

    invoke-direct {v0}, Lcom/metamoji/nt/NtProxyAuthDriver;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 152
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/PBE;

    const-string v2, "L6WPWb7sIvAn8DeM90"

    invoke-direct {v0, v2}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/PBE;->encryptString(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    .line 157
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 159
    sget-object v0, Lcom/metamoji/nt/NtProxyAuthDriver;->INSTANCE:Lcom/metamoji/nt/NtProxyAuthDriver;

    invoke-direct {v0}, Lcom/metamoji/nt/NtProxyAuthDriver;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static synthetic getKEY_AUTHTYPE$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getKEY_PASSWORD$annotations()V
    .locals 0

    return-void
.end method

.method private final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method


# virtual methods
.method public loadCredentials(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwProxyAuthEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "MMJProxyAuthenticationInfomation"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 126
    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/util/Map;

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    if-nez v3, :cond_4

    goto :goto_0

    .line 130
    :cond_4
    const-string/jumbo v5, "username"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    invoke-static {v5}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-nez v5, :cond_6

    move-object v5, v6

    .line 131
    :cond_6
    :try_start_1
    const-string/jumbo v7, "userpassword"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_7

    check-cast v7, Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    invoke-static {v7}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v7

    .line 132
    :goto_5
    const-string v7, "authtype"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_9

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_9
    invoke-static {v4}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v3, "Basic"

    .line 133
    :cond_a
    new-instance v4, Lcom/metamoji/network/NwProxyAuthEntity;

    new-instance v7, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    invoke-direct {v7, v5, v6}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v7, v3}, Lcom/metamoji/network/NwProxyAuthEntity;-><init>(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Ljava/lang/String;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 135
    invoke-direct {p0}, Lcom/metamoji/nt/NtProxyAuthDriver;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-void
.end method

.method public saveCredentials(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwProxyAuthEntity;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    const-string v1, "MMJProxyAuthenticationInfomation"

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 107
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-virtual {v4}, Lcom/metamoji/network/NwProxyAuthEntity;->getSavedCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    .line 112
    invoke-virtual {v4}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/nt/NtProxyAuthDriver;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-nez v7, :cond_3

    move-object v7, v8

    :cond_3
    const-string/jumbo v9, "username"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v4}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/nt/NtProxyAuthDriver;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v4

    :goto_1
    const-string/jumbo v4, "userpassword"

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-virtual {v3}, Lcom/metamoji/network/NwProxyAuthEntity;->getAuthType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtProxyAuthDriver;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "Basic"

    :cond_5
    const-string v4, "authtype"

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 105
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public showProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v2, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;

    const/4 v4, 0x0

    invoke-direct {v2, v1, p1, v4}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method
