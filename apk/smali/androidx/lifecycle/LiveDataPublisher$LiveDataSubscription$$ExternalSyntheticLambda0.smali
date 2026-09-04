.class public final synthetic Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;

    invoke-static {v0}, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->cancel$lambda$0(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;)V

    return-void
.end method
