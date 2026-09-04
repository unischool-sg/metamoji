.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/lib/utils/Listeners$IListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda15;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda15;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    check-cast p1, Landroidx/core/graphics/Insets;

    invoke-static {v0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setupWindowInsetsListener$lambda$14(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/core/graphics/Insets;)V

    return-void
.end method
