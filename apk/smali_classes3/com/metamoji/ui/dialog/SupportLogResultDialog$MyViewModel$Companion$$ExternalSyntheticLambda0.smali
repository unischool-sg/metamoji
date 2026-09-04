.class public final synthetic Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/time/ZonedDateTime;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/time/ZonedDateTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/time/ZonedDateTime;

    check-cast p1, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;->createBy$lambda$0(Ljava/lang/String;Ljava/time/ZonedDateTime;Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
