.class public final Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;
.super Ljava/lang/Object;
.source "UtSoftwareKeyboardObserver.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0001JA\u0010\u0007\u001a\u00020\u000126\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00060\tH\u0096\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;",
        "Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;",
        "impl",
        "<init>",
        "(Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;)V",
        "dispose",
        "",
        "observe",
        "listener",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "keyboardHeight",
        "screenHeight",
        "Companion",
        "dialog"
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
.field public static final Companion:Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->Companion:Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->$$delegate_0:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->$$delegate_0:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;->dispose()V

    return-void
.end method

.method public observe(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->$$delegate_0:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    invoke-interface {v0, p1}, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;->observe(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    move-result-object p1

    return-object p1
.end method
