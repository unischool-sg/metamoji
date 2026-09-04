.class public interface abstract Lcom/metamoji/cm/ICmUIProvider;
.super Ljava/lang/Object;
.source "ICmUIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;,
        Lcom/metamoji/cm/ICmUIProvider$ResourceId;
    }
.end annotation


# virtual methods
.method public abstract createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;
.end method

.method public abstract getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;
.end method

.method public abstract runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V
.end method

.method public abstract showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V
.end method

.method public abstract showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V
.end method
