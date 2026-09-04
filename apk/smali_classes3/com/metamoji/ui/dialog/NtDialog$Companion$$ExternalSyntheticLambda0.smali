.class public final synthetic Lcom/metamoji/ui/dialog/NtDialog$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/NtDialog$Companion;->closeDialog$lambda$0(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
