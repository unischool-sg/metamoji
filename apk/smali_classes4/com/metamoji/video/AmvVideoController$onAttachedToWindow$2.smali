.class final synthetic Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AmvVideoController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvVideoController;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Intent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/video/AmvVideoController;

    const-string v5, "onBackFromFullscreen(Landroid/content/Intent;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onBackFromFullscreen"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 427
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$2;->invoke(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0, p1}, Lcom/metamoji/video/AmvVideoController;->access$onBackFromFullscreen(Lcom/metamoji/video/AmvVideoController;Landroid/content/Intent;)V

    return-void
.end method
