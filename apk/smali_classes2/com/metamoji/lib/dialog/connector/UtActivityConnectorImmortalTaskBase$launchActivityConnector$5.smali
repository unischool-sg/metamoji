.class public final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;
.super Ljava/lang/Object;
.source "UtActivityConnectorImmortalTaskBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->launchActivityConnector(Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nUtActivityConnectorImmortalTaskBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtActivityConnectorImmortalTaskBase.kt\ncom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5\n*L\n1#1,67:1\n*E\n"
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


# instance fields
.field final synthetic $arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;->$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;->invoke(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/connector/UtActivityConnector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "connector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;->$arg:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;->launch(Ljava/lang/Object;)V

    return-void
.end method
