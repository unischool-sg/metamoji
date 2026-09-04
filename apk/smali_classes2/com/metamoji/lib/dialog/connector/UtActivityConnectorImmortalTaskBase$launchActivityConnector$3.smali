.class public final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;
.super Ljava/lang/Object;
.source "UtActivityConnectorImmortalTaskBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->launchActivityConnector(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
        "**>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtActivityConnectorImmortalTaskBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtActivityConnectorImmortalTaskBase.kt\ncom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3\n*L\n1#1,67:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;->INSTANCE:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;->invoke(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "connector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 50
    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launch$default(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
