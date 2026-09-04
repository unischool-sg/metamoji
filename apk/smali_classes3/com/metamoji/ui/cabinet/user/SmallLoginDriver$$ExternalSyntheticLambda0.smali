.class public final synthetic Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login$lambda$2(Lkotlin/jvm/functions/Function0;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Ljava/lang/Integer;)V

    return-void
.end method
