.class public final synthetic Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtFocusManager;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/lib/dialog/UtFocusManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/lib/dialog/UtFocusManager;

    check-cast p1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-static {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->removeChild$lambda$4(Lcom/metamoji/lib/dialog/UtFocusManager;Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
