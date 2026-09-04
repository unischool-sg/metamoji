.class public final Lcom/metamoji/sd/cs/SdHttpClient$Companion;
.super Ljava/lang/Object;
.source "SdHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/cs/SdHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/sd/cs/SdHttpClient$Companion;",
        "",
        "<init>",
        "()V",
        "DEBUG_LOG_ENABLED",
        "",
        "mDevice",
        "",
        "USER_AGENT",
        "mCustomCookieStore",
        "Lcom/metamoji/network/NwCookieJar;",
        "clearCookies",
        "",
        "clearCookie",
        "url",
        "Lokhttp3/HttpUrl;",
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

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/sd/cs/SdHttpClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearCookie(Lokhttp3/HttpUrl;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/metamoji/sd/cs/SdHttpClient;->access$getMCustomCookieStore$cp()Lcom/metamoji/network/NwCookieJar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwCookieJar;->clearCookie(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public final clearCookies()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 323
    invoke-static {}, Lcom/metamoji/sd/cs/SdHttpClient;->access$getMCustomCookieStore$cp()Lcom/metamoji/network/NwCookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/network/NwCookieJar;->clearCookies()V

    return-void
.end method
