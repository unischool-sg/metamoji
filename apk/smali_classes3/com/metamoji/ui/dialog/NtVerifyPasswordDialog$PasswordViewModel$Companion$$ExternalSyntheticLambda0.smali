.class public final synthetic Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;->createBy$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
